.class Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;
.super Ljava/lang/Object;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoPubExoPlayerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Landroid/content/Context;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;
    .registers 5

    .line 515
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newInstance(Landroid/content/Context;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    return-object p1
.end method
