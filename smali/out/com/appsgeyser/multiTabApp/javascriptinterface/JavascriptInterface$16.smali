.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->removeHistoryItem(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;J)V
    .registers 4

    .line 758
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iput-wide p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 762
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;->val$id:J

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->removeHistoryItem(J)I

    return-void
.end method
