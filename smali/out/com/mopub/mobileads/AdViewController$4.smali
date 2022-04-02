.class synthetic Lcom/mopub/mobileads/AdViewController$4;
.super Ljava/lang/Object;
.source "AdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 212
    invoke-static {}, Lcom/mopub/network/MoPubNetworkError$Reason;->values()[Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/AdViewController$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    :try_start_9
    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/AdViewController$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
