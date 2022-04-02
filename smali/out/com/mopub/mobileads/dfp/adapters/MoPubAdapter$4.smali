.class synthetic Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

.field static final synthetic $SwitchMap$com$mopub$nativeads$NativeErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 393
    invoke-static {}, Lcom/mopub/mobileads/MoPubErrorCode;->values()[Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 209
    :catch_28
    invoke-static {}, Lcom/mopub/nativeads/NativeErrorCode;->values()[Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    :try_start_31
    sget-object v4, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v4}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    sget-object v3, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v3}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method
