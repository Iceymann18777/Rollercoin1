.class Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;
.super Landroid/os/HandlerThread;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setProgressBarState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Ljava/lang/String;)V
    .registers 3

    .line 300
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->access$200(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)Lcom/appsgeyser/multiTabApp/ui/views/WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->hideProgressBarPanel()V

    return-void
.end method
