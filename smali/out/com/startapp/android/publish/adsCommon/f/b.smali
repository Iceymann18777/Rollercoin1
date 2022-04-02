.class public Lcom/startapp/android/publish/adsCommon/f/b;
.super Lcom/startapp/android/publish/adsCommon/f/e;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/f/d;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 44
    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->a:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 50
    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->b:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/f/b;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 5

    .line 21
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/c;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/c;-><init>()V

    .line 26
    :cond_b
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sens"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt"

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 28
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/b;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isService"

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 29
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagingType"

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/f/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DataEventRequest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sensors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bluetooth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packagingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
