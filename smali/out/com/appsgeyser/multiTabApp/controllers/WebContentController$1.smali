.class Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;
.super Ljava/lang/Object;
.source "WebContentController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->init(Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    return-void
.end method
