.class Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;
.super Ljava/lang/Object;
.source "AndroidSupportV4Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/AndroidSupportV4Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityCompat"
.end annotation


# direct methods
.method static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 3

    .line 70
    invoke-static {p0, p1, p2}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 2

    .line 74
    invoke-static {p0, p1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
