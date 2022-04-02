.class synthetic Lcom/mopub/common/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$common$LocationService$ValidLocationProvider:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 103
    invoke-static {}, Lcom/mopub/common/LocationService$ValidLocationProvider;->values()[Lcom/mopub/common/LocationService$ValidLocationProvider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/common/LocationService$1;->$SwitchMap$com$mopub$common$LocationService$ValidLocationProvider:[I

    :try_start_9
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-virtual {v1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/common/LocationService$1;->$SwitchMap$com$mopub$common$LocationService$ValidLocationProvider:[I

    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-virtual {v1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
