.class public Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private age:Ljava/lang/String;

.field private gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    .line 40
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->age:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public setAge(I)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;
    .registers 2

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDKAdPreferences [gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->gender:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences$Gender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;->age:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
