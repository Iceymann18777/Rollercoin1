.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->showPdfView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 386
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 389
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    const-class v2, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->val$path:Ljava/lang/String;

    const-string v2, "path_file"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->val$id:Ljava/lang/String;

    const-string v2, "widget_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
