.class public Lorg/altbeacon/beacon/service/StartRMData;
.super Ljava/lang/Object;
.source "StartRMData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/altbeacon/beacon/service/StartRMData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundFlag:Z

.field private mBetweenScanPeriod:J

.field private mCallbackPackageName:Ljava/lang/String;

.field private mRegion:Lorg/altbeacon/beacon/Region;

.field private mScanPeriod:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lorg/altbeacon/beacon/service/StartRMData$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/StartRMData$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/StartRMData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJZ)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    .line 63
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    .line 64
    iput-boolean p5, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-class v0, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    iput-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/altbeacon/beacon/service/StartRMData$1;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    .line 69
    iput-wide p5, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    .line 70
    iput-object p1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    .line 71
    iput-object p2, p0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    .line 72
    iput-boolean p7, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lorg/altbeacon/beacon/service/StartRMData;
    .registers 6

    .line 129
    const-class v0, Lorg/altbeacon/beacon/Region;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 131
    new-instance v0, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/StartRMData;-><init>()V

    const-string v1, "region"

    .line 132
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 133
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    iput-object v1, v0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    const-string v2, "scanPeriod"

    .line 136
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 137
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    goto :goto_38

    :cond_37
    move v3, v1

    :goto_38
    const-string v1, "betweenScanPeriod"

    .line 140
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 141
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    :cond_4c
    const-string v1, "backgroundFlag"

    .line 143
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 144
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    :cond_60
    const-string v1, "callbackPackageName"

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 147
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    :cond_70
    if-eqz v3, :cond_73

    return-object v0

    :cond_73
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundFlag()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    return v0
.end method

.method public getBetweenScanPeriod()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    return-wide v0
.end method

.method public getCallbackPackageName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionData()Lorg/altbeacon/beacon/Region;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    return-object v0
.end method

.method public getScanPeriod()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    iget-wide v1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    const-string v3, "scanPeriod"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    iget-wide v1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    const-string v3, "betweenScanPeriod"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    const-string v2, "backgroundFlag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    iget-object v1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    const-string v2, "callbackPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    if-eqz v1, :cond_2a

    const-string v2, "region"

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 90
    iget-object v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mRegion:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object p2, p0, Lorg/altbeacon/beacon/service/StartRMData;->mCallbackPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mScanPeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBetweenScanPeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-boolean p2, p0, Lorg/altbeacon/beacon/service/StartRMData;->mBackgroundFlag:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
