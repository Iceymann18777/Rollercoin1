.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->requestSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/lang/String;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->getSuggestionsAsync(Ljava/lang/String;)V

    return-void
.end method
