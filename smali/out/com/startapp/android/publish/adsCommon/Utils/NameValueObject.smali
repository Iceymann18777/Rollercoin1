.class public Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->valueSet:Ljava/util/Set;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->value:Ljava/lang/String;

    return-void
.end method

.method public setValueSet(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->valueSet:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameValueObject [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", valueSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/Utils/NameValueObject;->valueSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
