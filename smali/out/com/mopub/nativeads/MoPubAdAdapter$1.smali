.class Lcom/mopub/nativeads/MoPubAdAdapter$1;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/mopub/common/VisibilityTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubAdAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubAdAdapter;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$1;->this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubAdAdapter$1;->this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-static {p2, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->access$000(Lcom/mopub/nativeads/MoPubAdAdapter;Ljava/util/List;)V

    return-void
.end method
