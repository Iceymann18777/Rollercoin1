.class Lcom/yandex/metrica/impl/ob/s$c;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dc;

.field private final b:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 3

    .line 156
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 157
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->D()Lcom/yandex/metrica/impl/ob/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    .line 158
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/by;

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    .line 164
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DONE"

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->b()V

    .line 175
    :cond_14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 177
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/ob/by;->c(Ljava/lang/String;)V

    .line 180
    :cond_25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->b:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->a()V

    .line 185
    :cond_36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->d()V

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->e()V

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$c;->a:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->c()V

    return-void
.end method
