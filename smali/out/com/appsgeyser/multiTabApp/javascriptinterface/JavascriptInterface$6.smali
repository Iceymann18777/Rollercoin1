.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->setScaleForPageWithSize(II)V
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

    .line 251
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$300(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)I

    move-result v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    .line 254
    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$400(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)I

    move-result v2

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setScaleForPageWithSize(II)V

    return-void
.end method
