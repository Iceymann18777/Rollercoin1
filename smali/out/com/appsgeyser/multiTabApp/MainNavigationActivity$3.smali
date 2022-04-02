.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    const-string v0, "type"

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_52

    .line 201
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$000(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Z

    move-result p2

    const v0, 0x7f120159

    if-eqz p2, :cond_33

    .line 202
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v2, 0x7f0a0101

    invoke-virtual {p2, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const v0, 0x7f12017f

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;Landroid/content/Context;)V

    .line 203
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_52

    .line 211
    :cond_33
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_52

    :catch_3b
    move-exception p1

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "activityReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method
