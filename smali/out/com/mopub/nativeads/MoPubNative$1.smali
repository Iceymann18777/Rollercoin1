.class final Lcom/mopub/nativeads/MoPubNative$1;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 2

    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .registers 2

    .line 57
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    return-void
.end method
