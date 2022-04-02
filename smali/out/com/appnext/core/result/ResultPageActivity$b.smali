.class public final Lcom/appnext/core/result/ResultPageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/result/ResultPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/core/result/ResultPageActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adClicked(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 176
    iget-object p2, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {p2, p1}, Lcom/appnext/core/result/ResultPageActivity;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    invoke-static {p2, p1}, Lcom/appnext/core/result/ResultPageActivity;->a(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;

    .line 177
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {p1}, Lcom/appnext/core/result/ResultPageActivity;->g(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/q;

    move-result-object p1

    iget-object p2, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {p2}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v1}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tem_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v1}, Lcom/appnext/core/result/ResultPageActivity;->d(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v1}, Lcom/appnext/core/result/ResultPageActivity;->e(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appnext/core/result/ResultPageActivity$b$1;

    invoke-direct {v2, p0}, Lcom/appnext/core/result/ResultPageActivity$b$1;-><init>(Lcom/appnext/core/result/ResultPageActivity$b;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method public final impression(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {v0, p1}, Lcom/appnext/core/result/ResultPageActivity;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    .line 194
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->g(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/AppnextAd;)V

    return-void
.end method

.method public final openLink(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 207
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {p1, v0}, Lcom/appnext/core/result/ResultPageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final postView(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-virtual {v0, p1}, Lcom/appnext/core/result/ResultPageActivity;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    .line 200
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->g(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v2, p1}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&tem_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appnext/core/result/ResultPageActivity$b;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v2}, Lcom/appnext/core/result/ResultPageActivity;->d(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method
