.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localSuggestions:Ljava/util/ArrayList;

.field final synthetic val$remoteSuggestions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .registers 5

    .line 462
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$localSuggestions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$remoteSuggestions:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 467
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    const/4 v1, 0x6

    if-ge v7, v1, :cond_ba

    .line 474
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$localSuggestions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$remoteSuggestions:Ljava/util/ArrayList;

    move v3, v8

    move v5, v9

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    move-result-object v1

    if-nez v1, :cond_1f

    goto/16 :goto_ba

    .line 482
    :cond_1f
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->val$context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 483
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d00a5

    const/4 v4, 0x0

    .line 485
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a01e9

    .line 488
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a01e8

    .line 490
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 492
    instance-of v5, v1, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    if-eqz v5, :cond_8f

    add-int/lit8 v8, v8, 0x1

    .line 494
    move-object v5, v1

    check-cast v5, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 500
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const/16 v12, 0xff

    .line 501
    invoke-static {v0, v0, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 502
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v12, 0x12

    .line 502
    invoke-virtual {v10, v11, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 505
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 507
    :cond_8f
    instance-of v5, v1, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;

    if-eqz v5, :cond_b6

    add-int/lit8 v9, v9, 0x1

    .line 509
    move-object v5, v1

    check-cast v5, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;

    .line 510
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;->getAutocompleteText()Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :goto_9f
    new-instance v5, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;

    invoke-direct {v5, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    new-instance v3, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;

    invoke-direct {v3, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;)V

    .line 528
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    .line 545
    :cond_ba
    :goto_ba
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_suggestionsVisible:Z

    return-void
.end method
