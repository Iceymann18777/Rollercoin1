.class public Lcom/startapp/android/publish/common/model/AdDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adId:Ljava/lang/String;

.field private app:Z

.field private appPresencePackage:Ljava/lang/String;

.field private belowMinCPM:Z

.field private category:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private closeUrl:Ljava/lang/String;

.field private delayImpressionInSeconds:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private installs:Ljava/lang/String;

.field private intentDetails:Ljava/lang/String;

.field private intentPackageName:Ljava/lang/String;

.field private minAppVersion:I

.field private packageName:Ljava/lang/String;

.field private rating:F

.field private secondaryImageUrl:Ljava/lang/String;

.field private sendRedirectHops:Ljava/lang/Boolean;

.field private smartRedirect:Z

.field private startappBrowserEnabled:Z

.field private template:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackingClickUrl:Ljava/lang/String;

.field private trackingUrl:Ljava/lang/String;

.field private ttl:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Lcom/startapp/android/publish/common/model/AdDetails$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdDetails$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 21
    iput v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 21
    iput v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->adId:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->clickUrl:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingUrl:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingClickUrl:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->closeUrl:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->title:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->description:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->imageUrl:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->secondaryImageUrl:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->smartRedirect:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_55

    .line 194
    iput-boolean v3, p0, Lcom/startapp/android/publish/common/model/AdDetails;->smartRedirect:Z

    .line 196
    :cond_55
    iput-boolean v3, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    if-nez v2, :cond_5b

    .line 198
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    .line 201
    :cond_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->template:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->packageName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->appPresencePackage:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentPackageName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentDetails:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->minAppVersion:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->installs:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->category:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->app:Z

    if-ne v1, v3, :cond_95

    .line 214
    iput-boolean v3, p0, Lcom/startapp/android/publish/common/model/AdDetails;->app:Z

    .line 217
    :cond_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    if-ne v1, v3, :cond_9f

    .line 220
    iput-boolean v3, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    .line 224
    :cond_9f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->ttl:Ljava/lang/Long;

    .line 225
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v4

    if-nez v7, :cond_b6

    .line 226
    iput-object v6, p0, Lcom/startapp/android/publish/common/model/AdDetails;->ttl:Ljava/lang/Long;

    .line 230
    :cond_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->delayImpressionInSeconds:Ljava/lang/Long;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v7, v1, v4

    if-nez v7, :cond_ca

    .line 232
    iput-object v6, p0, Lcom/startapp/android/publish/common/model/AdDetails;->delayImpressionInSeconds:Ljava/lang/Long;

    .line 234
    :cond_ca
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_d3

    .line 236
    iput-object v6, p0, Lcom/startapp/android/publish/common/model/AdDetails;->sendRedirectHops:Ljava/lang/Boolean;

    goto :goto_dc

    :cond_d3
    if-ne p1, v3, :cond_d6

    const/4 v0, 0x1

    .line 238
    :cond_d6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->sendRedirectHops:Ljava/lang/Boolean;

    :goto_dc
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPresencePackage()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->appPresencePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayImpressionInSeconds()Ljava/lang/Long;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->delayImpressionInSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->installs:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDetails()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentPackageName()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBelowMinCPM()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    return v0
.end method

.method public getMinAppVersion()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->minAppVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .registers 2

    .line 83
    iget v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    return v0
.end method

.method public getSecondaryImageUrl()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->secondaryImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingClickUrl()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingCloseUrl()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->closeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingUrl()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/Long;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->ttl:Ljava/lang/Long;

    return-object v0
.end method

.method public isApp()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->app:Z

    return v0
.end method

.method public isCPE()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSmartRedirect()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->smartRedirect:Z

    return v0
.end method

.method public isStartappBrowserEnabled()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    return v0
.end method

.method public setMinAppVersion(I)V
    .registers 2

    .line 133
    iput p1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->minAppVersion:I

    return-void
.end method

.method public setStartappBrowserEnabled(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    return-void
.end method

.method public shouldSendRedirectHops()Ljava/lang/Boolean;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->sendRedirectHops:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdDetails [adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", closeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->closeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->secondaryImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", smartRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->smartRedirect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->template:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appPresencePackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->appPresencePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentDetails:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->minAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startappBrowserEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->ttl:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->app:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", belowMinCPM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", installs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->installs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delayImpressionInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->delayImpressionInSeconds:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendRedirectHops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/common/model/AdDetails;->sendRedirectHops:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 244
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->adId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->trackingClickUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->closeUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->secondaryImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->rating:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    iget-boolean p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->smartRedirect:Z

    .line 259
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/model/AdDetails;->startappBrowserEnabled:Z

    .line 262
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->template:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->appPresencePackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->intentDetails:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->minAppVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->installs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-boolean p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->app:Z

    .line 278
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->belowMinCPM:Z

    .line 284
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->ttl:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_7c

    .line 288
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_7f

    .line 290
    :cond_7c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    :goto_7f
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->delayImpressionInSeconds:Ljava/lang/Long;

    if-eqz p2, :cond_8b

    .line 295
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8e

    .line 297
    :cond_8b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    :goto_8e
    iget-object p2, p0, Lcom/startapp/android/publish/common/model/AdDetails;->sendRedirectHops:Ljava/lang/Boolean;

    if-nez p2, :cond_97

    const/4 p2, 0x0

    .line 300
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a3

    .line 302
    :cond_97
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9f

    const/4 p2, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p2, -0x1

    :goto_a0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a3
    return-void
.end method
