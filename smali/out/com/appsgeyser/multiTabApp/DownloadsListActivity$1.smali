.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;
.super Ljava/lang/Object;
.source "DownloadsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    .line 98
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object p4, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p4}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p5}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getFile_path()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$100(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/high16 p4, 0x10000000

    .line 101
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-lt p5, v1, :cond_71

    .line 104
    new-instance p4, Ljava/io/File;

    iget-object p5, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p5}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getFile_path()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const/high16 p4, 0x40000000    # 2.0f

    .line 107
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9c

    .line 111
    :cond_71
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getFile_path()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    :goto_9c
    :try_start_9c
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_a1} :catch_a2

    goto :goto_ae

    .line 118
    :catch_a2
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    const p2, 0x7f120121

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_ae
    return-void
.end method
