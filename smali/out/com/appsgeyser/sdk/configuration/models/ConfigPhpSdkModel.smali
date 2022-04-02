.class public Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;
.super Ljava/lang/Object;
.source "ConfigPhpSdkModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private activeByDefault:Z

.field private id:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private textOfPolicy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTextOfPolicy()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    return v0
.end method

.method public isActiveByDefault()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 98
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->active:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->activeByDefault:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->textOfPolicy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
