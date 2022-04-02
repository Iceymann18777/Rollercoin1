.class synthetic Lcom/mopub/mobileads/MoPubErrorCode$1;
.super Ljava/lang/Object;
.source "MoPubErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 59
    invoke-static {}, Lcom/mopub/mobileads/MoPubErrorCode;->values()[Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    :try_start_9
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
