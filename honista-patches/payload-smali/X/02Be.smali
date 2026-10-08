.class public final LX/02Be;
.super Ljava/lang/Object;

.method public final A00(Landroid/content/Context;LX/02gn;Lcom/instagram/common/session/UserSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 21

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-static {v10, v8}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    const/4 v4, 0x1

    move-object/from16 v7, p3

    invoke-static {v7, v4}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    const/4 v3, 0x2

    move-object/from16 v11, p2

    invoke-static {v11, v3}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    const/4 v0, 0x4

    move-object/from16 v12, p5

    invoke-static {v12, v0}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    const/4 v0, 0x6

    move-object/from16 v13, p6

    invoke-static {v13, v0}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v10}, LX/07kz;->A00(Landroid/content/Context;)LX/07md;

    move-result-object v0

    const-string v2, "notificationEnabled"

    const/4 v1, 0x1

    iget-object v0, v0, LX/07md;->A00:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    :cond_0
    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v5, LX/02VA;->A01:LX/02Vz;

    sget-object v1, LX/05ya;->A00:LX/05ya;

    invoke-static {v1}, LX/0C3h;->A0Q(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v0, -0x2

    invoke-virtual {v5, v1, v7, v0}, LX/02Vz;->A04(LX/0Gec;Lcom/instagram/common/session/UserSession;I)LX/02Zz;

    move-result-object v5

    sget-object v0, LX/000A;->A01:Ljava/lang/Integer;

    invoke-virtual {v5, v0}, LX/0BVX;->A05(Ljava/lang/Integer;)V

    const-string v0, "push/register/"

    invoke-virtual {v5, v0}, LX/0BVX;->A09(Ljava/lang/String;)V

    const-string v0, "device_token"

    move-object/from16 v14, p4

    invoke-virtual {v5, v0, v14}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v18, Lcom/instagram/common/notifications/push/intf/PushChannelType;->A05:Lcom/instagram/common/notifications/push/intf/PushChannelType;

    const-string v1, "android_fcm"

    const-string v0, "device_type"

    invoke-virtual {v5, v0, v1}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_sub_type"

    invoke-virtual {v5, v0, v8}, LX/0BVX;->A0B(Ljava/lang/String;I)V

    const-string v1, "os_settings"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, LX/02gg;->A01(LX/0BCv;)LX/02gh;

    move-result-object v1

    sget-object v0, LX/02go;->A2P:LX/02go;

    invoke-virtual {v1, v0}, LX/02gh;->A03(LX/02go;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "family_device_id"

    invoke-virtual {v5, v0, v1}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LX/0BPc;->A02:LX/0BPc;

    invoke-virtual {v0, v10}, LX/0BPc;->A07(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "guid"

    invoke-virtual {v5, v0, v1}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v5, v0, v12}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    :try_start_ssaid
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ssaid
    .catch Ljava/lang/IllegalStateException; {:try_start_ssaid .. :try_end_ssaid} :catch_ssaid

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    goto :ssaid_done

    :catch_ssaid
    move-exception v0

    const-string v0, "HonistaDeviceId"
    const-string v1, "Android ID unavailable; omitting optional request field"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :ssaid_done

    invoke-static {v7}, LX/02da;->A00(LX/0BCv;)LX/0Qmz;

    move-result-object v0

    check-cast v0, LX/01yd;

    invoke-virtual {v0, v2}, LX/01yd;->CAx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v0, 0x2c

    invoke-static {v0}, LX/02Uz;->A01(C)LX/02Uz;

    move-result-object v0

    invoke-virtual {v0, v1}, LX/02Uz;->A03(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "users"

    invoke-virtual {v5, v0, v1}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, LX/02no;->A00(LX/0BCv;)LX/02nt;

    move-result-object v0

    const-string v1, "Authorization-Others"

    invoke-virtual {v0}, LX/02nt;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ABR(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Failed to add HPKE params to token registration request: "

    const-string v6, "IGTokenRegistrationApi"

    :try_start_0
    new-instance v9, LX/05Za;

    invoke-direct {v9, v10}, LX/05Za;-><init>(Landroid/content/Context;)V

    const-string v1, "hpke_ciphersuite"

    invoke-virtual {v9}, LX/05Za;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpke_pubkey"

    invoke-virtual {v9}, LX/05Za;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hpke_keystore_id"

    iget-object v0, v9, LX/05Za;->A04:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LX/01LN; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v6, v8, v0}, LX/00Zt;->A0F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/16 v1, 0x13a

    invoke-static {v7}, LX/03Ac;->A00(Lcom/instagram/common/session/UserSession;)LX/03Ad;

    move-result-object v0

    iget-object v0, v0, LX/03Ad;->A03:LX/0427;

    invoke-interface {v0}, LX/0HEP;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/04lZ;

    invoke-interface {v0}, LX/04lZ;->DBt()LX/03mb;

    move-result-object v0

    invoke-static {v0, v1}, LX/03Qz;->A01(LX/03mb;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, LX/04bT;->A02(LX/0BCv;)LX/0An1;

    move-result-object v6

    const-wide v0, 0x8108cd004834a0L

    check-cast v6, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;

    invoke-interface {v6, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigUnsafeContext;->BDn(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, LX/0ACO;->A00(Lcom/instagram/common/session/UserSession;)LX/04xT;

    move-result-object v6

    const-string v1, "zr_carrier_id"

    iget v0, v6, LX/04xT;->A00:I

    invoke-virtual {v5, v1, v0}, LX/0BVX;->A0B(Ljava/lang/String;I)V

    const-string v1, "zr_eligibility_hash"

    iget-object v0, v6, LX/04xT;->A01:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zr_balance_state"

    iget-object v0, v6, LX/04xT;->A03:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zr_is_free_mode"

    iget-boolean v0, v6, LX/04xT;->A04:Z

    invoke-virtual {v5, v1, v0}, LX/0BVX;->A0F(Ljava/lang/String;Z)V

    const-string v1, "zr_product_alias"

    iget-object v0, v6, LX/04xT;->A02:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, LX/0BVX;->ACh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v9, LX/02Ca;

    move-wide/from16 v15, p7

    move/from16 v17, p9

    invoke-direct/range {v9 .. v17}, LX/02Ca;-><init>(Landroid/content/Context;LX/02gn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v5}, LX/0BvF;->A0J()LX/02m8;

    move-result-object v0

    invoke-virtual {v0, v9}, LX/02m8;->A07(LX/0R3o;)V

    sget-object v15, LX/07dq;->A00:LX/07dt;

    sget-object v17, LX/07dy;->A02:LX/07dy;

    move-object/from16 v16, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-virtual/range {v15 .. v20}, LX/07dt;->A02(LX/00wl;LX/07dy;Lcom/instagram/common/notifications/push/intf/PushChannelType;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x16d

    move-object v5, v0

    move v7, v3

    move v8, v4

    move v9, v4

    move-object v10, v2

    invoke-static/range {v5 .. v10}, LX/02qf;->A0C(LX/0gel;IIZZLX/0oke;)V

    return-void
.end method
