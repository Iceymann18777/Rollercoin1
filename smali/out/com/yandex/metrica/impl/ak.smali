.class public abstract Lcom/yandex/metrica/impl/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ak$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:[B

.field protected h:I

.field protected i:[B

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected k:Z

.field protected l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/yandex/metrica/impl/ak;->f:I

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ak;->k:Z

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/yandex/metrica/impl/ak;->l:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/yandex/metrica/impl/ak;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->d:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->j:Ljava/util/Map;

    return-void
.end method

.method public a([B)V
    .registers 3

    const/4 v0, 0x2

    .line 139
    iput v0, p0, Lcom/yandex/metrica/impl/ak;->f:I

    .line 140
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->g:[B

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->e:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak;->i:[B

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method abstract d()Lcom/yandex/metrica/impl/ob/cq;
.end method

.method public e()V
    .registers 2

    .line 111
    iget v0, p0, Lcom/yandex/metrica/impl/ak;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ak;->l:I

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/yandex/metrica/impl/ak;->f:I

    return v0
.end method

.method public j()[B
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->g:[B

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/yandex/metrica/impl/ak;->h:I

    return v0
.end method

.method l()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->j:Ljava/util/Map;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract o()Z
.end method

.method public p()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/yandex/metrica/impl/ak;->l:I

    return v0
.end method

.method public r()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ak;->k:Z

    return v0
.end method
