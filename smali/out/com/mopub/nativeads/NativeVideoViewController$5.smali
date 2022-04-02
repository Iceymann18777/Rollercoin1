.class Lcom/mopub/nativeads/NativeVideoViewController$5;
.super Ljava/lang/Object;
.source "NativeVideoViewController.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoViewController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoViewController;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$5;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgress(I)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$5;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateProgress(I)V

    return-void
.end method
