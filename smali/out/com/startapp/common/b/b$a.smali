.class public Lcom/startapp/common/b/b$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/common/b/b$a;->b:Ljava/util/Map;

    const-wide/16 v0, 0x64

    .line 46
    iput-wide v0, p0, Lcom/startapp/common/b/b$a;->d:J

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/startapp/common/b/b$a;->e:Z

    .line 48
    iput-boolean v0, p0, Lcom/startapp/common/b/b$a;->f:Z

    .line 51
    iput p1, p0, Lcom/startapp/common/b/b$a;->a:I

    return-void
.end method

.method static synthetic a(Lcom/startapp/common/b/b$a;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/startapp/common/b/b$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/startapp/common/b/b$a;)Ljava/util/Map;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/startapp/common/b/b$a;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/startapp/common/b/b$a;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/startapp/common/b/b$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/startapp/common/b/b$a;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/startapp/common/b/b$a;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/startapp/common/b/b$a;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/startapp/common/b/b$a;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/startapp/common/b/b$a;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/startapp/common/b/b$a;->f:Z

    return p0
.end method


# virtual methods
.method public a(J)Lcom/startapp/common/b/b$a;
    .registers 3

    .line 67
    iput-wide p1, p0, Lcom/startapp/common/b/b$a;->c:J

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/startapp/common/b/b$a;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/startapp/common/b/b$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/startapp/common/b/b$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/startapp/common/b/b$a;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 56
    iget-object v0, p0, Lcom/startapp/common/b/b$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object p0
.end method

.method public a(Z)Lcom/startapp/common/b/b$a;
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/startapp/common/b/b$a;->e:Z

    return-object p0
.end method

.method public a()Lcom/startapp/common/b/b;
    .registers 3

    .line 87
    new-instance v0, Lcom/startapp/common/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapp/common/b/b;-><init>(Lcom/startapp/common/b/b$a;Lcom/startapp/common/b/b$1;)V

    return-object v0
.end method

.method public b(Z)Lcom/startapp/common/b/b$a;
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/startapp/common/b/b$a;->f:Z

    return-object p0
.end method
