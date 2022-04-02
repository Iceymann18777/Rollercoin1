.class final Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;
.super Ljava/lang/Object;
.source "ConfigPhp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 4

    .line 108
    new-instance v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;-><init>(Landroid/os/Parcel;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 2

    .line 113
    new-array p1, p1, [Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;->newArray(I)[Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    return-object p1
.end method
