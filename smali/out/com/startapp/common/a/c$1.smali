.class final Lcom/startapp/common/a/c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/a/c;->a(Landroid/view/View;Lcom/startapp/common/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/common/a/c$a;


# direct methods
.method constructor <init>(Lcom/startapp/common/a/c$a;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/startapp/common/a/c$1;->a:Lcom/startapp/common/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 21

    move-object v0, p0

    .line 263
    iget-object v1, v0, Lcom/startapp/common/a/c$1;->a:Lcom/startapp/common/a/c$a;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/startapp/common/a/c$a;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method
