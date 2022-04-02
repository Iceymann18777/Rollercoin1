.class Lcom/yandex/metrica/impl/at$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/eh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/c$a;

.field final synthetic b:Lcom/yandex/metrica/impl/at;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/c$a;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/yandex/metrica/impl/at$1;->b:Lcom/yandex/metrica/impl/at;

    iput-object p2, p0, Lcom/yandex/metrica/impl/at$1;->a:Lcom/yandex/metrica/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/eg;)V
    .registers 9

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$1;->a:Lcom/yandex/metrica/c$a;

    .line 1136
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/eg;->c()Ljava/util/List;

    move-result-object v1

    .line 1137
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4b

    .line 1138
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 1140
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4b

    .line 1141
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1142
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1143
    iget-object v5, v0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 1144
    iget-object v4, p0, Lcom/yandex/metrica/impl/at$1;->b:Lcom/yandex/metrica/impl/at;

    iget v5, v4, Lcom/yandex/metrica/impl/at;->r:I

    iget-object v6, v0, Lcom/yandex/metrica/c$a;->f:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/impl/at;->r:I

    .line 1145
    iget-object v4, p0, Lcom/yandex/metrica/impl/at$1;->b:Lcom/yandex/metrica/impl/at;

    iget v5, v4, Lcom/yandex/metrica/impl/at;->r:I

    const/16 v6, 0x9

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/impl/at;->r:I

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 118
    :cond_4b
    iget-object v0, p0, Lcom/yandex/metrica/impl/at$1;->a:Lcom/yandex/metrica/c$a;

    .line 2122
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/eg;->a()Ljava/util/List;

    move-result-object p1

    .line 2123
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 2124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/c$a$e;

    iput-object v1, v0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    .line 2126
    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_92

    .line 2127
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ee;

    .line 2128
    iget-object v2, v0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/impl/ob/ee;)Lcom/yandex/metrica/c$a$e;

    move-result-object v1

    aput-object v1, v2, v3

    .line 2129
    iget-object v1, p0, Lcom/yandex/metrica/impl/at$1;->b:Lcom/yandex/metrica/impl/at;

    iget v2, v1, Lcom/yandex/metrica/impl/at;->r:I

    iget-object v4, v0, Lcom/yandex/metrica/c$a;->g:[Lcom/yandex/metrica/c$a$e;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/d;)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Lcom/yandex/metrica/impl/at;->r:I

    .line 2130
    iget-object v1, p0, Lcom/yandex/metrica/impl/at$1;->b:Lcom/yandex/metrica/impl/at;

    iget v2, v1, Lcom/yandex/metrica/impl/at;->r:I

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Lcom/yandex/metrica/impl/at;->r:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_92
    return-void
.end method
