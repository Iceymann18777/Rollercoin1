.class public Lcom/onesignal/OneSignal$SendTagsError;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendTagsError"
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/onesignal/OneSignal$SendTagsError;->message:Ljava/lang/String;

    .line 197
    iput p1, p0, Lcom/onesignal/OneSignal$SendTagsError;->code:I

    return-void
.end method
