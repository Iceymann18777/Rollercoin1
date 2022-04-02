.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$8;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->zoomIn()V
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

    .line 324
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$8;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$8;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->zoomIn()V

    return-void
.end method
