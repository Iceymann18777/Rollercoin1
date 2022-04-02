.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarExternalLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Landroid/content/Context;)V
    .registers 3

    .line 413
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->hideSuggestionsView()V

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080181

    .line 422
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->searchBtn:Landroid/widget/ImageView;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->dpToPx(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v2, 0x7f060123

    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 430
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v2, 0x7f06011f

    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 432
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
