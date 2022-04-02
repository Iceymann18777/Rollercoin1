.class public final enum Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
.super Ljava/lang/Enum;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/util/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/DeviceUtils$ForceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum DEVICE_ORIENTATION:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 47
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v1, "FORCE_PORTRAIT"

    const/4 v2, 0x0

    const-string v3, "portrait"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 48
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v1, "FORCE_LANDSCAPE"

    const/4 v3, 0x1

    const-string v4, "landscape"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 49
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v1, "DEVICE_ORIENTATION"

    const/4 v4, 0x2

    const-string v5, "device"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->DEVICE_ORIENTATION:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 50
    new-instance v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v1, "UNDEFINED"

    const/4 v5, 0x3

    const-string v6, ""

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 46
    sget-object v6, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->DEVICE_ORIENTATION:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->$VALUES:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static getForceOrientation(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .registers 6

    .line 60
    invoke-static {}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->values()[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 61
    iget-object v4, v3, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 66
    :cond_16
    sget-object p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .registers 2

    .line 46
    const-class v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .registers 1

    .line 46
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->$VALUES:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    invoke-virtual {v0}, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method
