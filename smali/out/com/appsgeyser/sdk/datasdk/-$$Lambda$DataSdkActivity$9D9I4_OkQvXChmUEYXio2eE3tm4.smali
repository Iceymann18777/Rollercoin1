.class public final synthetic Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$2:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p4, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$2:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iget-object v3, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->lambda$showEulaDialog$1$DataSdkActivity(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
