.class public Lcom/startapp/common/b/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/startapp/common/b/b$a;


# direct methods
.method private constructor <init>(Lcom/startapp/common/b/b$a;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/common/b/b$a;Lcom/startapp/common/b/b$1;)V
    .registers 3

    .line 6
    invoke-direct {p0, p1}, Lcom/startapp/common/b/b;-><init>(Lcom/startapp/common/b/b$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->a(Lcom/startapp/common/b/b$a;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->b(Lcom/startapp/common/b/b$a;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->c(Lcom/startapp/common/b/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->d(Lcom/startapp/common/b/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->e(Lcom/startapp/common/b/b$a;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v0}, Lcom/startapp/common/b/b$a;->f(Lcom/startapp/common/b/b$a;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunnerRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v1}, Lcom/startapp/common/b/b$a;->a(Lcom/startapp/common/b/b$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v2}, Lcom/startapp/common/b/b$a;->c(Lcom/startapp/common/b/b$a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v2}, Lcom/startapp/common/b/b$a;->e(Lcom/startapp/common/b/b$a;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v2}, Lcom/startapp/common/b/b$a;->d(Lcom/startapp/common/b/b$a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/common/b/b;->a:Lcom/startapp/common/b/b$a;

    invoke-static {v1}, Lcom/startapp/common/b/b$a;->b(Lcom/startapp/common/b/b$a;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
