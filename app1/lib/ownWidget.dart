import 'package:flutter/material.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 290,
            width: 200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRect(
                  child: Stack(
                    children: [
                      Image.network(
                        "https://scontent.fdac189-1.fna.fbcdn.net/v/t51.82787-15/591149386_18101642716684181_3355411949844407122_n.webp?stp=dst-jpg_tt6&_nc_cat=109&ccb=1-7&_nc_sid=13d280&_nc_eui2=AeFlMINj0FVJn4IPaVMAvcwy2h9fHVpb3nLaH18dWlvecg-m_5lb-1lNa7vQYdxLRcg5bWjpukFiB50EvsZwRiCD&_nc_ohc=Tmvn2iunYnEQ7kNvwF1DCNP&_nc_oc=AdmaPUNpBUMrImcgOfefTnnGMeeoPeijwaOKJXxQBCUCntF01zhNYqqe-ZOnY4lavv4&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=B2m7HgchBkezawZkQ-obpg&_nc_ss=8&oh=00_Afy0AkGfzCOZKrMtDnXGgz6PfElRCzyyapUuQKVeBQte5g&oe=69BCF0D4",
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("🌟 4.5"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
