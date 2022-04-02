.class public Lcom/appnext/base/services/OperationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    const-class v0, Lcom/appnext/base/services/OperationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    const-string v0, "config_data_obj"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "more_data"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 26
    new-instance v1, Lcom/appnext/base/services/b;

    invoke-direct {v1}, Lcom/appnext/base/services/b;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/appnext/base/services/OperationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/appnext/base/services/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/appnext/base/operations/a$a;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_21

    :catchall_21
    return-void
.end method
