.class Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;
.super Ljava/lang/Thread;
.source "JavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

.field final synthetic val$absoluteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;Ljava/lang/String;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->val$absoluteUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, ""

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->val$absoluteUrl:Ljava/lang/String;

    const-string v2, "file:///android_asset/"

    .line 136
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#.*"

    .line 139
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iget-object v2, v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    .line 140
    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :goto_21
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->this$0:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2$1;->this$1:Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    iget-object v2, v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;->val$resultCallback:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->access$200(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
