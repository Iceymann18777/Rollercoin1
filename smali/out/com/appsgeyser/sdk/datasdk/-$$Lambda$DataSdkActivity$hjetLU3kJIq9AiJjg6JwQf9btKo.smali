.class public final synthetic Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$0:Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$1:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iget-object v2, p0, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->lambda$showEulaDialog$0$DataSdkActivity(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
