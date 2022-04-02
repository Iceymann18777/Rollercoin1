.class public Lcom/yandex/metrica/impl/ob/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:[Ljava/security/cert/X509Certificate;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ff;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/yandex/metrica/impl/ob/ff;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ff;->b:[Ljava/security/cert/X509Certificate;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Z

    return-void
.end method


# virtual methods
.method public a()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ff;->b:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Z

    return v0
.end method

.method c()V
    .registers 2

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ff;->c:Z

    return-void
.end method
