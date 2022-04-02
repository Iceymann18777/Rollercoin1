.class public final Lcom/yandex/metrica/c$a$d$a$b$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1085
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1086
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$a$b$b;->d()Lcom/yandex/metrica/c$a$d$a$b$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1100
    iget v0, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->c:I

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    .line 1101
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1103
    :cond_e
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 4

    .line 1108
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1109
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1110
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    iget v1, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->c:I

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    .line 1113
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d$a$b$b;
    .registers 2

    const-string v0, ""

    .line 1090
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1091
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->c:I

    const/4 v0, -0x1

    .line 1092
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$b$b;->a:I

    return-object p0
.end method
