.class Lcom/mopub/nativeads/MoPubAdAdapter$5;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubAdAdapter;->setOnItemLongClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3

    .line 519
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p3}, Lcom/mopub/nativeads/MoPubAdAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->this$0:Lcom/mopub/nativeads/MoPubAdAdapter;

    .line 524
    invoke-static {v0}, Lcom/mopub/nativeads/MoPubAdAdapter;->access$200(Lcom/mopub/nativeads/MoPubAdAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    .line 523
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x1

    :goto_21
    return p1
.end method
