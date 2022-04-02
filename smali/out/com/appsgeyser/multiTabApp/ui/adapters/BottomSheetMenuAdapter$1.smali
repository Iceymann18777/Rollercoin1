.class Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;
.super Ljava/lang/Object;
.source "BottomSheetMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->onBindViewHolder(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

.field final synthetic val$holder:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->val$holder:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->val$holder:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$002(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;I)I

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$200(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$000(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$100(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v3}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$000(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method
