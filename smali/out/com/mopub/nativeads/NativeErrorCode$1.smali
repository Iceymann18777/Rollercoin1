.class synthetic Lcom/mopub/nativeads/NativeErrorCode$1;
.super Ljava/lang/Object;
.source "NativeErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$nativeads$NativeErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    invoke-static {}, Lcom/mopub/nativeads/NativeErrorCode;->values()[Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode$1;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    :try_start_9
    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode$1;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode$1;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
