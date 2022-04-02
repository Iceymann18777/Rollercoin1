.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

.field final synthetic val$suggestionItem:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;)V
    .registers 3

    .line 528
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->val$suggestionItem:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 532
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->val$suggestionItem:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    .line 533
    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;->getAutocompleteText()Ljava/lang/String;

    move-result-object p1

    .line 534
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    .line 536
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 535
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 537
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->requestSuggestions()V

    return-void
.end method
