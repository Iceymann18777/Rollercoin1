.class final Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;
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

.field final synthetic val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

.field final synthetic val$textOfPolicy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$textOfPolicy:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 136
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$dataSdkActivity:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iget-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$textOfPolicy:Ljava/lang/String;

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;->val$configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {p1, p2, v0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->showEulaDialog(Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    return-void
.end method
