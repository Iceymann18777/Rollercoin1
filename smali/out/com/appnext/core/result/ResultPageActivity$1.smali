.class final Lcom/appnext/core/result/ResultPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/result/ResultPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/core/result/ResultPageActivity;


# direct methods
.method constructor <init>(Lcom/appnext/core/result/ResultPageActivity;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lcom/appnext/core/Ad;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/result/c;->D()Lcom/appnext/core/Ad;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/appnext/core/p;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity$1;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    invoke-static {v0}, Lcom/appnext/core/result/ResultPageActivity;->a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/result/c;->C()Lcom/appnext/core/p;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
