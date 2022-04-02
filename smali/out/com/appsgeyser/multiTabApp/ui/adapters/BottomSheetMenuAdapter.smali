.class public Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BottomSheetMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;,
        Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private iconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private lastCheckedView:Landroid/view/View;

.field private onItemClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

.field private selectedPosition:I

.field private widgetEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;",
            "Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->iconsMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->selectedPosition:I

    .line 36
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->onItemClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->selectedPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;I)I
    .registers 2

    .line 22
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->selectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/List;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->onItemClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->iconsMap:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->onBindViewHolder(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;I)V
    .registers 5

    .line 49
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->selectedPosition:I

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 51
    :goto_7
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, p2, v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->bind(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;Z)V

    if-eqz v0, :cond_18

    .line 53
    iget-object p2, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->itemView:Landroid/view/View;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->lastCheckedView:Landroid/view/View;

    .line 56
    :cond_18
    iget-object p2, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;
    .registers 5

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;-><init>(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemChecked(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V
    .registers 5

    const/4 v0, 0x0

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 72
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->widgetEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 73
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->selectedPosition:I

    .line 74
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->uncheckLastView()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->notifyItemChanged(I)V

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    :goto_2b
    return-void
.end method

.method public uncheckLastView()V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->lastCheckedView:Landroid/view/View;

    if-eqz v0, :cond_1f

    const v1, 0x7f0a006e

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    return-void
.end method
