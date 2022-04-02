.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarHomePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 356
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->hideSuggestionsView()V

    .line 357
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBtn:Landroid/widget/ImageView;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->stopRefreshButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v2, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->dpToPx(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 363
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v2, 0x7f06011d

    .line 366
    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 367
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v2, 0x7f060124

    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 368
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v2, 0x7f060120

    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    return-void
.end method
