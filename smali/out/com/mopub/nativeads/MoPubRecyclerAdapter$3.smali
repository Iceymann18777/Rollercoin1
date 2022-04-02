.class Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "MoPubRecyclerAdapter.java"


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

    .line 99
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 103
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result p2

    .line 109
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 111
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 8

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    add-int v2, p1, p2

    const/4 v3, 0x0

    if-lt v2, v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 120
    :goto_25
    sget-object v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v4

    if-eq v2, v4, :cond_50

    sget-object v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 121
    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v4

    if-ne v2, v4, :cond_3c

    if-eqz v1, :cond_3c

    goto :goto_50

    :cond_3c
    :goto_3c
    if-ge v3, p2, :cond_4a

    .line 127
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->insertItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 129
    :cond_4a
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1, v0, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeInserted(II)V

    goto :goto_55

    .line 123
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    :goto_55
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 160
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 9

    .line 135
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    add-int v2, p1, p2

    const/4 v3, 0x0

    if-lt v2, v1, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 139
    :goto_25
    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-eq v4, v5, :cond_6a

    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .line 140
    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-ne v4, v5, :cond_3c

    if-eqz v2, :cond_3c

    goto :goto_6a

    .line 144
    :cond_3c
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v2

    add-int v4, v1, p2

    invoke-virtual {v2, v4}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v2

    :goto_48
    if-ge v3, p2, :cond_56

    .line 147
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 150
    :cond_56
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result p1

    sub-int/2addr v2, p1

    sub-int p1, v2, p2

    sub-int/2addr v0, p1

    .line 153
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1, v0, v2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_6f

    .line 142
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->this$0:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    :goto_6f
    return-void
.end method
