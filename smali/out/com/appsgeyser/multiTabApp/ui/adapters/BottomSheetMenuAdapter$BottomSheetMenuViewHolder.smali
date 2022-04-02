.class Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BottomSheetMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BottomSheetMenuViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private tabName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;Landroid/view/View;)V
    .registers 4

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    .line 94
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a006d

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a006e

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060031

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method bind(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;Z)V
    .registers 7

    .line 101
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6f

    .line 103
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_5b

    .line 106
    :cond_2f
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabIcons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getDrawableIconFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5b
    if-eqz v0, :cond_69

    .line 111
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 114
    :cond_69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 117
    :cond_6f
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_74
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_96

    .line 123
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_ac

    .line 125
    :cond_96
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_ac
    return-void
.end method
