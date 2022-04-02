.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$12;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->showTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$12;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$12;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const v1, 0x7f0a01f0

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
