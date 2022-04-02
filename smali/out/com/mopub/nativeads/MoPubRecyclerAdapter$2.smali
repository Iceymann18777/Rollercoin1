.class Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "MoPubRecyclerAdapter.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/common/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->handleAdLoaded(I)V

    return-void
.end method

.method public onAdRemoved(I)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->handleAdRemoved(I)V

    return-void
.end method
