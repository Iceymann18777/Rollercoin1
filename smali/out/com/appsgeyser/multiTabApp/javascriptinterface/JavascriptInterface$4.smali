.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->updateIconBadge(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$buttonBadge:Ljava/lang/String;

.field final synthetic val$buttonName:Ljava/lang/String;

.field final synthetic val$icons:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 217
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$icons:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$buttonName:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$buttonBadge:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$icons:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$buttonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;->val$buttonBadge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->updateBadge(Ljava/lang/String;)V

    return-void
.end method
