.class final Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;
.super Ljava/lang/Object;
.source "DataSdkController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    .line 116
    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 119
    new-instance p1, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    iget-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    invoke-direct {p1, p2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-static {p2, v0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->access$000(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    .line 121
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->setConfigPhpModel(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    const-string p2, "elapsedTime"

    const-wide/16 v0, 0x0

    .line 122
    invoke-virtual {p1, p2, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_29

    .line 125
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->finishAffinity()V

    goto :goto_2e

    .line 127
    :cond_29
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    :goto_2e
    return-void
.end method
