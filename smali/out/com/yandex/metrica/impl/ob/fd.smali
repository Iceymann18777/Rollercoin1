.class public Lcom/yandex/metrica/impl/ob/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fj;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->c:Z

    const-wide/32 v0, 0x5265c00

    .line 14
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/fd;->d:J

    const-string v0, "https://certificate.mobile.yandex.net/api/v1/pins"

    .line 15
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fd;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fj;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->c:Z

    const-wide/32 v0, 0x5265c00

    .line 14
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/fd;->d:J

    const-string v0, "https://certificate.mobile.yandex.net/api/v1/pins"

    .line 15
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fd;->e:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fd;->a:Lcom/yandex/metrica/impl/ob/fj;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fj;ZZ)V
    .registers 4

    .line 27
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fd;-><init>(Lcom/yandex/metrica/impl/ob/fj;)V

    .line 28
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Z

    .line 29
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/fd;->c:Z

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/fd;->d:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fd;->e:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fd;->f:Ljava/util/List;

    return-void
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fd;->e:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fd;->f:Ljava/util/List;

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/fj;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fd;->a:Lcom/yandex/metrica/impl/ob/fj;

    return-object v0
.end method

.method e()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->c:Z

    return v0
.end method

.method f()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Z

    return v0
.end method
