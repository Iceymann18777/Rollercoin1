.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;
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

    .line 517
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->val$suggestionItem:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 520
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->val$suggestionItem:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    .line 521
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;->getAutocompleteText()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideSuggestionsView()V

    .line 523
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;->this$1:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_forceGoToUrl(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
