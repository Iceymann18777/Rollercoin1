.class final Lcom/appnext/core/AdsService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gh:Lcom/appnext/core/n;

.field final synthetic gi:Lcom/appnext/core/AdsService;


# direct methods
.method constructor <init>(Lcom/appnext/core/AdsService;Lcom/appnext/core/n;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/appnext/core/AdsService$1;->gi:Lcom/appnext/core/AdsService;

    iput-object p2, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "guid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "zone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_22

    move-object v1, v3

    goto :goto_2a

    :cond_22
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gi:Lcom/appnext/core/AdsService;

    const/4 v2, 0x1

    .line 1110
    invoke-static {v1, v2}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adsID"

    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isApk"

    const-string v2, "0"

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "bannerid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "placementid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "vid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "tid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osid"

    const-string v2, "100"

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v1, v1, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    const-string v2, "auid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/appnext/core/AdsService$1;->gi:Lcom/appnext/core/AdsService;

    invoke-virtual {v1}, Lcom/appnext/core/AdsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/AdsService$1;->gh:Lcom/appnext/core/n;

    iget-object v2, v2, Lcom/appnext/core/n;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_99

    goto :goto_9a

    :cond_99
    move-object v3, v1

    :goto_9a
    const-string v1, "installer"

    .line 127
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_9f
    const-string v1, "https://admin.appnext.com/AdminService.asmx/SetOpenV1"

    .line 130
    invoke-static {v1, v0}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a4} :catch_a4

    :catch_a4
    return-void
.end method
