.class public abstract Lcom/startapp/android/publish/adsCommon/BaseResponse;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorMessage:Ljava/lang/String;

.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validResponse:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->parameters:Ljava/util/Map;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->validResponse:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
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

    .line 23
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public isValidResponse()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->validResponse:Z

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setValidResponse(Z)V
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->validResponse:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResponse [parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->validResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/BaseResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
